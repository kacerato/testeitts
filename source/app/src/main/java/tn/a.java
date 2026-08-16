package tn;

import java.util.Collection;

public class a implements x {

    public final long f117752a;

    public final un.d f117753b;

    public final Collection<u> f117754c;

    public a(long colliderId, un.d collider, Collection<u> affectedTiles) {
        this.f117752a = colliderId;
        this.f117753b = collider;
        this.f117754c = affectedTiles;
    }

    @Override
    public void a(u tile) {
        tile.b(this.f117752a, this.f117753b);
    }

    @Override
    public Collection<u> b() {
        return this.f117754c;
    }
}
