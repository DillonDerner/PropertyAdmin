package main.database.resource;

import main.database.model.Company;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CompanyResource extends BaseResource {

    private Company getCompany(ResultSet resultSet) {
        Company company = new Company();
        try {
            company.setId(resultSet.getInt("id"));
            company.setName(resultSet.getString("name"));
            company.setType(resultSet.getString("type"));
            company.setEin(resultSet.getString("ein"));
            company.setFiling_date(resultSet.getDate("filing_date"));
            company.setRenewal_date(resultSet.getDate("filing_date"));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return company;
    }

    public Company getById(int id) {
        String query = "Select * from company where id = "+id;
        ResultSet resultSet = executeQuery(query);
        return getCompany(resultSet);
    }

    public List<Company> getAll() {
        String query = "Select * from company";
        ResultSet resultSet = executeQuery(query);
        List<Company> companies = new ArrayList<>();
        companies.add(getCompany(resultSet));
        try {
            while(resultSet.next()){
                companies.add(getCompany(resultSet));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return companies;
    }

}

//            while(resultSet.next()){
//                System.out.println();
//            }
