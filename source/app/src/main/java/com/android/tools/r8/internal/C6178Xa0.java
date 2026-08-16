package com.android.tools.r8.internal;

import com.android.tools.r8.Version;
import com.android.tools.r8.metadata.R8BaselineProfileRewritingMetadata;
import com.android.tools.r8.metadata.R8BuildMetadata;
import com.android.tools.r8.metadata.R8CompilationMetadata;
import com.android.tools.r8.metadata.R8DexFileMetadata;
import com.android.tools.r8.metadata.R8FeatureSplitsMetadata;
import com.android.tools.r8.metadata.R8OptionsMetadata;
import com.android.tools.r8.metadata.R8ResourceOptimizationMetadata;
import com.android.tools.r8.metadata.R8StartupOptimizationMetadata;
import com.android.tools.r8.metadata.R8StatsMetadata;
import java.util.List;
import org.openjdk.tools.doclint.Messages;

public final class C6178Xa0 implements R8BuildMetadata {

    @InterfaceC9168qv
    @InterfaceC10474yl0("options")
    public final R8OptionsMetadata f45751a;

    @InterfaceC9168qv
    @InterfaceC10474yl0("baselineProfileRewriting")
    public final R8BaselineProfileRewritingMetadata f45752b;

    @InterfaceC9168qv
    @InterfaceC10474yl0("compilation")
    public final R8CompilationMetadata f45753c;

    @InterfaceC9168qv
    @InterfaceC10474yl0("dexFiles")
    public final List<R8DexFileMetadata> f45754d;

    @InterfaceC9168qv
    @InterfaceC10474yl0(Messages.Stats.OPT)
    public final R8StatsMetadata f45755e;

    @InterfaceC9168qv
    @InterfaceC10474yl0("featureSplits")
    public final R8FeatureSplitsMetadata f45756f;

    @InterfaceC9168qv
    @InterfaceC10474yl0("resourceOptimization")
    public final R8ResourceOptimizationMetadata f45757g;

    @InterfaceC9168qv
    @InterfaceC10474yl0("startupOptimization")
    public final R8StartupOptimizationMetadata f45758h;

    @InterfaceC9168qv
    @InterfaceC10474yl0("version")
    public final String f45759i = Version.LABEL;

    public C6178Xa0(C7274fb0 c7274fb0, C6064Va0 c6064Va0, C6235Ya0 c6235Ya0, List list, C4908Bb0 c4908Bb0, C6608bb0 c6608bb0, C9609tb0 c9609tb0, C10611zb0 c10611zb0) {
        this.f45751a = c7274fb0;
        this.f45752b = c6064Va0;
        this.f45753c = c6235Ya0;
        this.f45754d = list;
        this.f45755e = c4908Bb0;
        this.f45756f = c6608bb0;
        this.f45757g = c9609tb0;
        this.f45758h = c10611zb0;
    }

    @Override
    public final R8BaselineProfileRewritingMetadata getBaselineProfileRewritingMetadata() {
        return this.f45752b;
    }

    @Override
    public final R8CompilationMetadata getCompilationMetadata() {
        return this.f45753c;
    }

    @Override
    public final List getDexFilesMetadata() {
        return this.f45754d;
    }

    @Override
    public final R8FeatureSplitsMetadata getFeatureSplitsMetadata() {
        return this.f45756f;
    }

    @Override
    public final R8OptionsMetadata getOptionsMetadata() {
        return this.f45751a;
    }

    @Override
    public final R8ResourceOptimizationMetadata getResourceOptimizationMetadata() {
        return this.f45757g;
    }

    @Override
    public final R8StartupOptimizationMetadata getStartupOptizationOptions() {
        return this.f45758h;
    }

    @Override
    public final R8StatsMetadata getStatsMetadata() {
        return this.f45755e;
    }

    @Override
    public final String getVersion() {
        return this.f45759i;
    }

    @Override
    public final String toJson() {
        return new C5713Oz().a(this);
    }
}
