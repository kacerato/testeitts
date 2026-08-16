package M5;

import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import java.io.File;
import w3.p;

public class c extends L5.b {
    @Override
    public void k() {
        super.k();
        o(Lang.l(Lang.T.LOADING_EDITOR));
        n(Lang.l(Lang.T.CHECKING_FILES));
        if (p.b(new File(com.itsmagic.engine.Core.Components.ProjectController.a.Y(this.f11606b) + "/_VULKAN"))) {
            b();
        } else {
            n(Lang.l(Lang.T.FAILED_TO_DELETE_VULKAN_CACHE));
        }
    }
}
