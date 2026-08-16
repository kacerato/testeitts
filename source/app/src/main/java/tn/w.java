package tn;

import java.util.Collection;

public class w implements x {

    public final long f117812a;

    public final Collection<u> f117813b;

    public w(long colliderId, Collection<u> affectedTiles) {
        this.f117812a = colliderId;
        this.f117813b = affectedTiles;
    }

    @Override
    public void a(u tile) {
        tile.j(this.f117812a);
    }

    @Override
    public Collection<u> b() {
        return this.f117813b;
    }
}
