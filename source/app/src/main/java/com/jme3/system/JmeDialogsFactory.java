package com.jme3.system;

public interface JmeDialogsFactory {
    void showErrorDialog(String str);

    boolean showSettingsDialog(AppSettings appSettings, boolean z10);
}
