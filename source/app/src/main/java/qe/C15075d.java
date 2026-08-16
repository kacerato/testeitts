package qe;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.provider.Browser;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import androidx.annotation.NonNull;

public class C15075d implements InterfaceC15074c {

    public static final String f106134a = "https";

    @NonNull
    public static Uri b(@NonNull String str) {
        Uri parse = Uri.parse(str);
        return TextUtils.isEmpty(parse.getScheme()) ? parse.buildUpon().scheme(f106134a).build() : parse;
    }

    @Override
    public void a(@NonNull View view, @NonNull String str) {
        Uri b10 = b(str);
        Context context = view.getContext();
        Intent intent = new Intent("android.intent.action.VIEW", b10);
        intent.putExtra(Browser.EXTRA_APPLICATION_ID, context.getPackageName());
        try {
            context.startActivity(intent);
        } catch (ActivityNotFoundException unused) {
            Log.w("LinkResolverDef", "Actvity was not found for the link: '" + str + "'");
        }
    }
}
