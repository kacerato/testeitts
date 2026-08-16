package r5;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Panels.ExportProject.Utils.BuildConfigs;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Activities.Editor.Utils.UIComponents.CustomCheckBox.CustomCheckBox;
import com.itsmagic.engine2.R;
import q5.C15043a;

public class C15148a extends C15043a {

    public CustomCheckBox f108646g;

    public class C1983a extends AbstractViewOnClickListenerC12733a {
        public C1983a() {
        }

        @Override
        public void click(View v10) {
            C15148a.this.f108646g.setChecked(!C15148a.this.f108646g.c());
        }
    }

    @Override
    public View b() {
        View inflate = this.f105917a.inflate(R.layout.export_project_stage_offline_advanced_configs, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R.id.tittle);
        TextView textView2 = (TextView) inflate.findViewById(R.id.text);
        TextView textView3 = (TextView) inflate.findViewById(R.id.generate_vulkan_shader_precache_label);
        View findViewById = inflate.findViewById(R.id.generate_vulkan_shader_precache_row);
        this.f108646g = (CustomCheckBox) inflate.findViewById(R.id.generate_vulkan_shader_precache_toggle);
        textView.setText(Lang.l(Lang.T.ASSISTANCE_EXPORT_STAGE_ADVANCED_TITTLE));
        textView2.setText(Lang.l(Lang.T.ASSISTANCE_EXPORT_STAGE_ADVANCED_TEXT));
        textView3.setText(Lang.l(Lang.T.ASSISTANCE_EXPORT_STAGE_ADVANCED_VULKAN_SHADER_PRECACHE));
        this.f108646g.setChecked(this.f105921e.e());
        C1983a c1983a = new C1983a();
        findViewById.setOnClickListener(c1983a);
        textView3.setOnClickListener(c1983a);
        return inflate;
    }

    @Override
    public boolean d() {
        BuildConfigs buildConfigs = this.f105921e;
        CustomCheckBox customCheckBox = this.f108646g;
        buildConfigs.generateVulkanShadersPreCache = Boolean.valueOf(customCheckBox != null && customCheckBox.c());
        return super.d();
    }
}
