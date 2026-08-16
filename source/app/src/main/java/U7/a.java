package U7;

import F7.i;
import F7.j;
import Ic.C2633l;
import android.content.Context;
import android.widget.ImageView;
import com.itsmagic.engine2.R;

public class a implements j {
    @Override
    public void a(Context context, ImageView imageView, ImageView subIconImageView, i eElement) {
        try {
            C2633l.j(imageView, eElement.f6679a, context, true);
        } catch (Exception e10) {
            e10.printStackTrace();
            Vc.e.V(imageView, R.drawable.unknow_file, context);
        }
        if (subIconImageView != null) {
            subIconImageView.setImageDrawable(null);
        }
    }
}
