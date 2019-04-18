package work.login.domain;

public class NativeProduct {
    private String id;
    private String name;
    private Double price;
    private String img;
    private Integer stock;
    private String brief;
    private String onlinetime;
    private String typeid;


    @Override
    public String toString() {
        return "NativeProduct{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", img='" + img + '\'' +
                ", stock=" + stock +
                ", brief='" + brief + '\'' +
                ", onlinetime='" + onlinetime + '\'' +
                ", typeid='" + typeid + '\'' +
                '}';
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public Integer getStock() {
        return stock;
    }

    public void setStock(Integer stock) {
        this.stock = stock;
    }

    public String getBrief() {
        return brief;
    }

    public void setBrief(String brief) {
        this.brief = brief;
    }

    public String getOnlinetime() {
        return onlinetime;
    }

    public void setOnlinetime(String onlinetime) {
        this.onlinetime = onlinetime;
    }

    public String getTypeid() {
        return typeid;
    }

    public void setTypeid(String typeid) {
        this.typeid = typeid;
    }

    public NativeProduct(String id, String name, Double price, String img, Integer stock, String brief, String onlinetime, String typeid) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.img = img;
        this.stock = stock;
        this.brief = brief;
        this.onlinetime = onlinetime;
        this.typeid = typeid;
    }

    public NativeProduct() {
    }
}
