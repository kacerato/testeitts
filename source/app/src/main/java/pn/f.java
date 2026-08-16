package pn;

import java.io.IOException;
import jn.C13904v;

public class f {

    public final e f104198a = new e();

    public void a() throws IOException {
        C13904v c10 = this.f104198a.c(getClass().getClassLoader().getResourceAsStream("dungeon_all_tiles_navmesh.bin"), 6);
        c10.R(6, 9);
        c10.R(2, 9);
        c10.R(4, 3);
        c10.R(2, 8);
    }

    public void b() throws IOException {
        C13904v g10 = this.f104198a.g(getClass().getClassLoader().getResourceAsStream("dungeon_all_tiles_navmesh_32bit.bin"), 6);
        g10.R(6, 9);
        g10.R(2, 9);
        g10.R(4, 3);
        g10.R(2, 8);
    }

    public void c() throws IOException {
        C13904v c10 = this.f104198a.c(getClass().getClassLoader().getResourceAsStream("all_tiles_navmesh.bin"), 6);
        c10.R(4, 7);
        c10.R(1, 6);
        c10.R(6, 2);
        c10.R(7, 6);
    }
}
