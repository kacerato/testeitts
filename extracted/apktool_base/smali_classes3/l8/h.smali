.class public Ll8/h;
.super Ll8/i;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/String; = "UIText cannot be resolved to a type"

.field public static final c:Ljava/lang/String; = "UIText"

.field public static final d:Ljava/lang/String; = "UITextView"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ll8/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lk8/c;Ljava/util/List;Lk8/a;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "javaCode",
            "compillerOutputs",
            "jpcListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk8/c;",
            "Ljava/util/List<",
            "Ld8/e;",
            ">;",
            "Lk8/a;",
            ")Z"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ld8/e;

    if-eqz p3, :cond_0

    iget-object p3, p3, Ld8/e;->b:Ljava/lang/String;

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "UIText cannot be resolved to a type"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lk8/c;->d()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string p3, "UIText"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, "\\bUIText\\b"

    const-string v1, "UITextView"

    invoke-virtual {p2, p3, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1, p3}, Lk8/c;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_2
    return v0
.end method
