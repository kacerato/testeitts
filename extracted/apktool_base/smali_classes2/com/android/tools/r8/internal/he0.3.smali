.class public final Lcom/android/tools/r8/internal/he0;
.super Lcom/android/tools/r8/internal/ZQ;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ny;


# static fields
.field public static final b:Lcom/android/tools/r8/internal/he0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/he0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/he0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/he0;->b:Lcom/android/tools/r8/internal/he0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/ZQ;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/android/tools/r8/internal/wi0;

    iget-object v0, p1, Lcom/android/tools/r8/internal/wi0;->e:Lcom/android/tools/r8/internal/hh0;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/tools/r8/internal/hh0;->e:Lcom/android/tools/r8/internal/hh0;

    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/wi0;->d:Lcom/android/tools/r8/internal/Zh0;

    if-nez p1, :cond_1

    sget-object p1, Lcom/android/tools/r8/internal/Zh0;->j:Lcom/android/tools/r8/internal/Zh0;

    :cond_1
    const-string v1, "it.key"

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/android/tools/r8/internal/hh0;->e:Lcom/android/tools/r8/internal/hh0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/hh0;->d()Lcom/android/tools/r8/internal/gh0;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/gh0;->a(Lcom/android/tools/r8/internal/Zh0;)Lcom/android/tools/r8/internal/gh0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/gh0;->b()Lcom/android/tools/r8/internal/hh0;

    move-result-object p1

    filled-new-array {v0, p1}, [Lcom/android/tools/r8/internal/hh0;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/pl0;->a([Ljava/lang/Object;)Lcom/android/tools/r8/internal/nl0;

    move-result-object p1

    return-object p1
.end method
