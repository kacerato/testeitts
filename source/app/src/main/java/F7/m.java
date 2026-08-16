package F7;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.itsmagic.engine2.R;

public class m extends RecyclerView.ViewHolder {

    public TextView f6696a;

    public ImageView f6697b;

    public View f6698c;

    public ImageView f6699d;

    public View f6700e;

    public LinearLayout f6701f;

    public LinearLayout f6702g;

    public m(View v10) {
        super(v10);
        this.f6700e = v10.findViewById(R.id.layout);
        this.f6696a = (TextView) v10.findViewById(R.id.name);
        this.f6697b = (ImageView) v10.findViewById(R.id.icon);
        this.f6698c = v10.findViewById(R.id.leftspace);
        this.f6699d = (ImageView) v10.findViewById(R.id.open);
        this.f6701f = (LinearLayout) v10.findViewById(R.id.extras);
        this.f6702g = (LinearLayout) v10.findViewById(R.id.left_extras);
    }
}
