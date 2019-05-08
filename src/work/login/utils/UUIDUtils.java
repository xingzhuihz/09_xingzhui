package work.login.utils;

import org.junit.Test;

import java.util.UUID;

public class UUIDUtils {
    public static String UUIDGetId() {
        return UUID.randomUUID().toString().replace("-", "").toUpperCase();
    }

    @Test
    public void test() {
        System.out.println(UUIDGetId());
    }
}
