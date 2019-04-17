package work.login.domain;

public class NativeProduct {
    private int id;
    private String name;
    private String img;

    @Override
    public String toString() {
        return "NativeProduct{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", img='" + img + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public NativeProduct(int id, String name, String img) {
        this.id = id;
        this.name = name;
        this.img = img;
    }

    public NativeProduct() {
    }
}
