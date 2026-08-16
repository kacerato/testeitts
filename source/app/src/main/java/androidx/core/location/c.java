package androidx.core.location;

import android.location.LocationManager;
import androidx.core.location.LocationManagerCompat;
import java.util.concurrent.Callable;

public final class c implements Callable {

    public final LocationManager f32588b;

    public final LocationManagerCompat.GpsStatusTransport f32589c;

    public c(LocationManager locationManager, LocationManagerCompat.GpsStatusTransport gpsStatusTransport) {
        this.f32588b = locationManager;
        this.f32589c = gpsStatusTransport;
    }

    @Override
    public final Object call() {
        Boolean lambda$registerGnssStatusCallback$1;
        lambda$registerGnssStatusCallback$1 = LocationManagerCompat.lambda$registerGnssStatusCallback$1(this.f32588b, this.f32589c);
        return lambda$registerGnssStatusCallback$1;
    }
}
