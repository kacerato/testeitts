package G7;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.itsmagic.engine.Activities.Editor.Utils.UIComponents.CustomCheckBox.CustomCheckBox;
import com.itsmagic.engine2.R;

public class f extends G7.a {

    public g f7697a;

    public class a implements CustomCheckBox.a {
        public a() {
        }

        @Override
        public void a(CustomCheckBox buttonView, boolean isChecked) {
            f.this.f7697a.a(isChecked);
        }
    }

    public f(g toggleListener) {
        this.f7697a = toggleListener;
    }

    @Override
    public void a(LayoutInflater layoutInflater, Context context, LinearLayout parent, int height) {
        View inflate = layoutInflater.inflate(R.layout.editorv2_inspector_toggle, (ViewGroup) null);
        parent.addView(inflate);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) inflate.getLayoutParams();
        layoutParams.height = height;
        layoutParams.width = height;
        CustomCheckBox customCheckBox = (CustomCheckBox) inflate.findViewById(R.id.toggle);
        customCheckBox.setChecked(this.f7697a.isChecked());
        customCheckBox.setOnCheckedChangeListener(new a());
        inflate.setLayoutParams(layoutParams);
    }
}
