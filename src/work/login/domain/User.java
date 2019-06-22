package work.login.domain;

/**
 * Create by Administrator on 2019/6/19.
 */
public class User {
    private Integer id;
    private String name;
    private String password;
    private Integer limits;
    private String img;
    private String phoneNumber;

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                ", limits=" + limits +
                ", img='" + img + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getLimits() {
        return limits;
    }

    public void setLimits(Integer limits) {
        this.limits = limits;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public User(Integer id, String name, String password, Integer limits, String img, String phoneNumber) {
        this.id = id;
        this.name = name;
        this.password = password;
        this.limits = limits;
        this.img = img;
        this.phoneNumber = phoneNumber;
    }

    public User() {
    }
}
