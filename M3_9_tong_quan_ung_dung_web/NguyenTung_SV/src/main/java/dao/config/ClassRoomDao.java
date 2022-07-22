package dao.config;

import model.ClassRoom;
import model.HocVien;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ClassRoomDao {
    static Connection connection = ConnectMySQL.getConnection();

    public static List<ClassRoom> getAll() {
        String selectAll = "SELECT * from classroom";

        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(selectAll);

            List<ClassRoom> list = new ArrayList<>();
            while (resultSet.next()) {
                int id = resultSet.getInt("idclass");
                String name = resultSet.getString("name");

                list.add(new ClassRoom(id, name));
            }
            return list;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static ClassRoom getById(int id) {
        String selectAll = "SELECT * from classroom where idclass = ?";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(selectAll);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();

            resultSet.next();
            int idclass = resultSet.getInt("idclass");
            String name = resultSet.getString("name");

            return new ClassRoom(idclass, name);


        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}

