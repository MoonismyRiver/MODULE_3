package dao.config;

import model.ClassRoom;
import model.HocVien;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class HocVienDao {
    static Connection connection = ConnectMySQL.getConnection();

    public static List<HocVien> getAll() {
        String selectAll = "SELECT * FROM thithu_c0322g1.student";
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(selectAll);
            List<HocVien> hocViens = new ArrayList<>();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String address = resultSet.getString("address");
                Date date = resultSet.getDate("date");
                String phone = resultSet.getString("phonenumber");
                String email = resultSet.getString("email");
                int idclass = Integer.parseInt(resultSet.getString("idclass"));

                ClassRoom classRoom = ClassRoomDao.getById(idclass);
                hocViens.add(new HocVien(id, name, address, date, phone, email,classRoom));
            }
            return hocViens;
        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }

    public static void saveHocVien(HocVien hocVien) {
        String insert = "INSERT INTO student (`name`, `address`, `date`, `phoneNumber`, `email`,`idclass`) VALUES (?,?,?,?,?,?)";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(insert);
            preparedStatement.setString(1, hocVien.getName());
            preparedStatement.setString(2, hocVien.getAddress());
            preparedStatement.setDate(3, hocVien.getDate());
            preparedStatement.setString(4, hocVien.getPhone());
            preparedStatement.setString(5, hocVien.getEmail());
            preparedStatement.setInt(6, hocVien.getClassRoom().getId());

            preparedStatement.execute();

        } catch (Exception throwables) {
            throwables.printStackTrace();
        }
    }


    public static List<HocVien> findByName(String nameFind) {

        String find = "SELECT * FROM thithu_c0322g1.student where student.name like concat('%',?,'%')";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(find);
            preparedStatement.setString(1, nameFind);
            ResultSet resultSet = preparedStatement.executeQuery();

            List<HocVien> hocViens = new ArrayList<>();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String address = resultSet.getString("address");
                Date date = resultSet.getDate("date");
                String phone = resultSet.getString("phoneNumber");
                String email = resultSet.getString("email");
                int idclass = Integer.parseInt(resultSet.getString("idclass"));

                ClassRoom classRoom = ClassRoomDao.getById(idclass);
                hocViens.add(new HocVien(id, name, address, date, phone, email,classRoom));
            }
            return hocViens;

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
