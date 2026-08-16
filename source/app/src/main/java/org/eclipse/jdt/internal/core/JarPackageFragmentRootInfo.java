package org.eclipse.jdt.internal.core;

import java.util.Map;
import org.eclipse.jdt.internal.core.util.HashtableOfArrayToObject;

public class JarPackageFragmentRootInfo extends PackageFragmentRootInfo {
    Map<String, String> overriddenClasses;
    HashtableOfArrayToObject rawPackageInfo;
}
