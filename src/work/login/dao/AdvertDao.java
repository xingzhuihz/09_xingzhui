package work.login.dao;

import work.login.domain.Advert;

import java.sql.SQLException;
import java.util.List;

public interface AdvertDao {
    List<Advert> fourAdvert() throws SQLException;


}
