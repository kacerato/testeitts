package org.openjdk.tools.sjavac;

import java.util.Arrays;
import java.util.function.Predicate;
import org.openjdk.tools.sjavac.client.ClientMain;
import org.openjdk.tools.sjavac.options.Option;
import org.openjdk.tools.sjavac.server.ServerMain;

public class Main {
    public static int go(String[] strArr) {
        return Arrays.asList(strArr).stream().anyMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$go$0;
                lambda$go$0 = Main.lambda$go$0((String) obj);
                return lambda$go$0;
            }
        }) ? ServerMain.run(strArr) : ClientMain.run(strArr);
    }

    public static boolean lambda$go$0(String str) {
        return str.startsWith(Option.STARTSERVER.arg);
    }

    public static void main(String... strArr) {
        System.exit(go(strArr));
    }
}
