package u5;

import F7.i;
import F7.j;
import Ic.C2633l;
import android.content.Context;
import android.widget.ImageView;
import com.itsmagic.engine2.R;
import u5.d;

public class C15576a implements j {
    @Override
    public void a(Context context, ImageView imageView, ImageView subIconImageView, i eElement) {
        if (C2633l.b(".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm", eElement.f6679a) && (eElement instanceof d.t)) {
            com.bumptech.glide.b.D(context).j(((d.t) eElement).f118500m.getUri()).z(C.b.PREFER_RGB_565).m(com.bumptech.glide.load.engine.i.f59186b).F0(true).u(R.drawable.wo_uimage).h1(imageView);
        } else {
            C2633l.j(imageView, eElement.f6679a, context, true);
        }
    }
}
