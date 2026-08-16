.class public final Lcom/android/tools/r8/internal/En0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Sb;

.field public final b:Z

.field public final c:Lcom/android/tools/r8/internal/Dn0;

.field public final d:I


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Dn0;)V
    .locals 3

    .line 6
    sget-object v0, Lcom/android/tools/r8/internal/Ub;->c:Lcom/android/tools/r8/internal/Ub;

    const v1, 0x7fffffff

    const/4 v2, 0x0

    .line 7
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/tools/r8/internal/En0;-><init>(Lcom/android/tools/r8/internal/Dn0;ZLcom/android/tools/r8/internal/Sb;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Dn0;ZLcom/android/tools/r8/internal/Sb;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/internal/En0;->c:Lcom/android/tools/r8/internal/Dn0;

    .line 3
    iput-boolean p2, p0, Lcom/android/tools/r8/internal/En0;->b:Z

    .line 4
    iput-object p3, p0, Lcom/android/tools/r8/internal/En0;->a:Lcom/android/tools/r8/internal/Sb;

    .line 5
    iput p4, p0, Lcom/android/tools/r8/internal/En0;->d:I

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/android/tools/r8/internal/En0;
    .locals 2

    sget-object v0, Lcom/android/tools/r8/internal/n60;->a:Lcom/android/tools/r8/internal/l60;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/tools/r8/internal/XK;

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/XK;-><init>(Ljava/util/regex/Pattern;)V

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    const-string v1, "The pattern may not match the empty string: %s"

    invoke-static {p0, v1, v0}, Lcom/android/tools/r8/internal/U60;->a(ZLjava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lcom/android/tools/r8/internal/En0;

    new-instance v1, Lcom/android/tools/r8/internal/Bn0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Bn0;-><init>(Lcom/android/tools/r8/internal/XK;)V

    invoke-direct {p0, v1}, Lcom/android/tools/r8/internal/En0;-><init>(Lcom/android/tools/r8/internal/Dn0;)V

    return-object p0
.end method
