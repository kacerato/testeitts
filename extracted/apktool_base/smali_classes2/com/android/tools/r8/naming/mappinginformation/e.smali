.class public abstract Lcom/android/tools/r8/naming/mappinginformation/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/naming/MapVersion;Lcom/android/tools/r8/internal/gL;Lcom/android/tools/r8/DiagnosticsHandler;ILjava/util/function/Consumer;)V
    .locals 3

    .line 2
    iget-object v0, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/dL;

    if-nez v0, :cond_0

    .line 3
    invoke-static {p3}, Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;->b(I)Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;

    move-result-object p0

    .line 4
    invoke-interface {p2, p0}, Lcom/android/tools/r8/DiagnosticsHandler;->info(Lcom/android/tools/r8/Diagnostic;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6
    invoke-static {p3}, Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;->c(I)Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;

    move-result-object p0

    .line 7
    invoke-interface {p2, p0}, Lcom/android/tools/r8/DiagnosticsHandler;->info(Lcom/android/tools/r8/Diagnostic;)V

    return-void

    :cond_1
    const/4 v1, -0x1

    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "partitionSourceFiles"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_1
    const-string v2, "com.android.tools.r8.rewriteFrame"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_2
    const-string v2, "com.android.tools.r8.mapping"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_3
    const-string v2, "com.android.tools.r8.synthesized"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_4
    const-string v2, "sourceFile"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_5
    const-string v2, "com.android.tools.r8.residualsignature"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_6
    const-string v2, "com.android.tools.r8.outline"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_7
    const-string v2, "com.android.tools.r8.outlineCallsite"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 9
    invoke-static {p3, v0}, Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;->a(ILjava/lang/String;)Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/android/tools/r8/DiagnosticsHandler;->info(Lcom/android/tools/r8/Diagnostic;)V

    .line 10
    invoke-static {v0, p1, p4}, Lcom/android/tools/r8/internal/sv0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/gL;Ljava/util/function/Consumer;)V

    return-void

    .line 11
    :pswitch_0
    invoke-static {p1, p4}, Lcom/android/tools/r8/internal/L50;->a(Lcom/android/tools/r8/internal/gL;Ljava/util/function/Consumer;)V

    return-void

    .line 12
    :pswitch_1
    invoke-static {p0, p1, p4}, Lcom/android/tools/r8/internal/Fk0;->a(Lcom/android/tools/r8/naming/MapVersion;Lcom/android/tools/r8/internal/gL;Ljava/util/function/Consumer;)V

    return-void

    .line 13
    :pswitch_2
    invoke-static {p1, p3, p4}, Lcom/android/tools/r8/naming/mappinginformation/b;->a(Lcom/android/tools/r8/internal/gL;ILjava/util/function/Consumer;)V

    return-void

    .line 14
    :pswitch_3
    invoke-static {p0, p4}, Lcom/android/tools/r8/internal/Kf;->a(Lcom/android/tools/r8/naming/MapVersion;Ljava/util/function/Consumer;)V

    return-void

    .line 15
    :pswitch_4
    invoke-static {p1, p2, p3, p4}, Lcom/android/tools/r8/naming/mappinginformation/a;->a(Lcom/android/tools/r8/internal/gL;Lcom/android/tools/r8/DiagnosticsHandler;ILjava/util/function/Consumer;)V

    return-void

    .line 16
    :pswitch_5
    invoke-static {p0, p1, p4}, Lcom/android/tools/r8/internal/Jf0;->a(Lcom/android/tools/r8/naming/MapVersion;Lcom/android/tools/r8/internal/gL;Ljava/util/function/Consumer;)V

    return-void

    .line 17
    :pswitch_6
    invoke-static {p0, p4}, Lcom/android/tools/r8/internal/O40;->a(Lcom/android/tools/r8/naming/MapVersion;Ljava/util/function/Consumer;)V

    return-void

    .line 18
    :pswitch_7
    invoke-static {p0, p1, p4}, Lcom/android/tools/r8/internal/M40;->a(Lcom/android/tools/r8/naming/MapVersion;Lcom/android/tools/r8/internal/gL;Ljava/util/function/Consumer;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6c53aa82 -> :sswitch_7
        -0x52374047 -> :sswitch_6
        -0x4f76f2b6 -> :sswitch_5
        -0x4245b3c9 -> :sswitch_4
        -0x41a3668f -> :sswitch_3
        0x21a4d045 -> :sswitch_2
        0x393cfa2a -> :sswitch_1
        0x50a1b9d2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/util/List;Lcom/android/tools/r8/naming/mappinginformation/e;Ljava/util/function/Consumer;)V
    .locals 3

    .line 19
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/naming/mappinginformation/e;

    .line 20
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/naming/mappinginformation/e;->a(Lcom/android/tools/r8/naming/mappinginformation/e;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 21
    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 22
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a()Lcom/android/tools/r8/naming/mappinginformation/a;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract a(Lcom/android/tools/r8/naming/mappinginformation/e;)Z
.end method

.method public b()Lcom/android/tools/r8/naming/mappinginformation/b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract b(Lcom/android/tools/r8/naming/mappinginformation/e;)Lcom/android/tools/r8/naming/mappinginformation/e;
.end method

.method public c()Lcom/android/tools/r8/internal/M40;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Lcom/android/tools/r8/internal/O40;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Lcom/android/tools/r8/internal/L50;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Lcom/android/tools/r8/naming/mappinginformation/d;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Lcom/android/tools/r8/internal/Hf0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public h()Lcom/android/tools/r8/internal/If0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public i()Lcom/android/tools/r8/internal/Jf0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public j()Lcom/android/tools/r8/internal/Fk0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public k()Lcom/android/tools/r8/internal/sv0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public m()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/M40;

    return v0
.end method

.method public n()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/O40;

    return v0
.end method

.method public o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public q()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/Fk0;

    return v0
.end method

.method public abstract r()Ljava/lang/String;
.end method
