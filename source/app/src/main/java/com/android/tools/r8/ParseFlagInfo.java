package com.android.tools.r8;

import java.util.List;

public interface ParseFlagInfo {
    String getFlagFormat();

    List<String> getFlagFormatAlternatives();

    List<String> getFlagHelp();
}
