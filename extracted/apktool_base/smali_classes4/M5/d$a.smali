.class public LM5/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LM5/d;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LM5/d;


# direct methods
.method public constructor <init>(LM5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LM5/d$a;->a:LM5/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    iget-object v0, p0, LM5/d$a;->a:LM5/d;

    invoke-static {v0, p1}, LM5/d;->s(LM5/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, LM5/d;->t(LM5/d;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, LM5/d$a;->a:LM5/d;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ERROR_NO_INTERNET_CONNECTION:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LM5/d;->t(LM5/d;Ljava/lang/String;)V

    return-void
.end method

.method public d(IJJJZLcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "progress",
            "etaInMilliSeconds",
            "downloadedBytesPerSecond",
            "downloadedBytes",
            "indeterminate",
            "updateStep"
        }
    .end annotation

    const/4 p2, 0x0

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p3, 0x64

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p2

    :goto_0
    iget-object p1, p0, LM5/d$a;->a:LM5/d;

    int-to-float p3, p2

    const/high16 p4, 0x42c80000    # 100.0f

    div-float/2addr p3, p4

    invoke-virtual {p1, p3}, LL5/b;->m(F)V

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    long-to-float p3, p6

    const/high16 p4, 0x49800000    # 1048576.0f

    div-float/2addr p3, p4

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string p4, "%.1fMB"

    invoke-static {p1, p4, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p3, LM5/d$c;->a:[I

    invoke-virtual {p9}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p3, p3, p4

    const/4 p4, 0x1

    const-string p5, "%"

    const-string p6, " - "

    if-eq p3, p4, :cond_2

    const/4 p1, 0x2

    if-eq p3, p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, LM5/d$a;->a:LM5/d;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->IMPORTING_TEMPLATE:LAc/b;

    invoke-static {p4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, LL5/b;->n(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-eqz p8, :cond_3

    iget-object p2, p0, LM5/d$a;->a:LM5/d;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->DOWNLOADING_TEMPLATE:LAc/b;

    invoke-static {p4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, LL5/b;->n(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object p3, p0, LM5/d$a;->a:LM5/d;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p7, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->DOWNLOADING_TEMPLATE:LAc/b;

    invoke-static {p7}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p4, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, LL5/b;->n(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public e(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "updateStep"
        }
    .end annotation

    iget-object v0, p0, LM5/d$a;->a:LM5/d;

    iget-object v0, v0, LL5/b;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->l0(Ljava/lang/String;)V

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p$a;->Import:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p$a;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, LM5/d$a;->a:LM5/d;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->INSTALLING_JAVA:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, LL5/b;->n(Ljava/lang/String;)V

    new-instance p1, LM5/d$a$a;

    invoke-direct {p1, p0}, LM5/d$a$a;-><init>(LM5/d$a;)V

    invoke-static {p1}, Lid/a;->n(Lid/a$d;)V

    :cond_0
    return-void
.end method
