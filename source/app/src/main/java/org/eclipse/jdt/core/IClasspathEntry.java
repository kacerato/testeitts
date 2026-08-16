package org.eclipse.jdt.core;

import org.eclipse.core.runtime.IPath;

public interface IClasspathEntry {
    public static final int CPE_CONTAINER = 5;
    public static final int CPE_LIBRARY = 1;
    public static final int CPE_PROJECT = 2;
    public static final int CPE_SOURCE = 3;
    public static final int CPE_VARIABLE = 4;

    boolean combineAccessRules();

    IAccessRule[] getAccessRules();

    int getContentKind();

    int getEntryKind();

    IPath[] getExclusionPatterns();

    IClasspathAttribute[] getExtraAttributes();

    IPath[] getInclusionPatterns();

    IPath getOutputLocation();

    IPath getPath();

    IClasspathEntry getReferencingEntry();

    IClasspathEntry getResolvedEntry();

    IPath getSourceAttachmentPath();

    IPath getSourceAttachmentRootPath();

    boolean isExported();

    default boolean isTest() {
        for (IClasspathAttribute iClasspathAttribute : getExtraAttributes()) {
            if ("test".equals(iClasspathAttribute.getName()) && "true".equals(iClasspathAttribute.getValue())) {
                return true;
            }
        }
        return false;
    }

    default boolean isWithoutTestCode() {
        for (IClasspathAttribute iClasspathAttribute : getExtraAttributes()) {
            if (IClasspathAttribute.WITHOUT_TEST_CODE.equals(iClasspathAttribute.getName()) && "true".equals(iClasspathAttribute.getValue())) {
                return true;
            }
        }
        return false;
    }
}
