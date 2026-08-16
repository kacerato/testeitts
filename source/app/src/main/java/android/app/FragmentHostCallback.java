package android.app;

import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/FragmentHostCallback.class
 */
public abstract class FragmentHostCallback<E> extends FragmentContainer {
    public abstract E onGetHost();

    public FragmentHostCallback(Context context, Handler handler, int windowAnimations) {
        throw new RuntimeException("Stub!");
    }

    public void onDump(String prefix, FileDescriptor fd2, PrintWriter writer, String[] args) {
        throw new RuntimeException("Stub!");
    }

    public boolean onShouldSaveFragmentState(Fragment fragment) {
        throw new RuntimeException("Stub!");
    }

    public LayoutInflater onGetLayoutInflater() {
        throw new RuntimeException("Stub!");
    }

    public boolean onUseFragmentManagerInflaterFactory() {
        throw new RuntimeException("Stub!");
    }

    public void onInvalidateOptionsMenu() {
        throw new RuntimeException("Stub!");
    }

    public void onStartActivityFromFragment(Fragment fragment, Intent intent, int requestCode, Bundle options) {
        throw new RuntimeException("Stub!");
    }

    public void onStartIntentSenderFromFragment(Fragment fragment, IntentSender intent, int requestCode, Intent fillInIntent, int flagsMask, int flagsValues, int extraFlags, Bundle options) throws IntentSender.SendIntentException {
        throw new RuntimeException("Stub!");
    }

    public void onRequestPermissionsFromFragment(Fragment fragment, String[] permissions, int requestCode) {
        throw new RuntimeException("Stub!");
    }

    public boolean onHasWindowAnimations() {
        throw new RuntimeException("Stub!");
    }

    public int onGetWindowAnimations() {
        throw new RuntimeException("Stub!");
    }

    public void onAttachFragment(Fragment fragment) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public <T extends View> T onFindViewById(int id2) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onHasView() {
        throw new RuntimeException("Stub!");
    }
}
