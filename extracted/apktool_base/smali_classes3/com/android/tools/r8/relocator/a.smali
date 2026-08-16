.class public Lcom/android/tools/r8/relocator/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/CompilationFailedException;
        }
    .end annotation

    sget-object v0, Lcom/android/tools/r8/origin/a;->f:Lcom/android/tools/r8/origin/a;

    invoke-static {p0, v0}, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->parse([Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->build()Lcom/android/tools/r8/relocator/RelocatorCommand;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/relocator/RelocatorCommand;->isPrintHelp()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v0, Lcom/android/tools/r8/relocator/RelocatorCommand;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/relocator/RelocatorCommand;->isPrintVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lcom/android/tools/r8/Version;->getVersionString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Relocator "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {p0}, Lcom/android/tools/r8/relocator/Relocator;->run(Lcom/android/tools/r8/relocator/RelocatorCommand;)V

    return-void
.end method
