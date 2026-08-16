.class public final Lcom/android/tools/r8/internal/ke0;
.super Lcom/android/tools/r8/internal/ZQ;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ny;


# static fields
.field public static final b:Lcom/android/tools/r8/internal/ke0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/ke0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ke0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/ke0;->b:Lcom/android/tools/r8/internal/ke0;

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
    .locals 5

    const/4 v0, 0x2

    check-cast p1, Lcom/android/tools/r8/internal/ej0;

    iget v1, p1, Lcom/android/tools/r8/internal/ej0;->b:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    iget-object v3, p1, Lcom/android/tools/r8/internal/ej0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v3, Lcom/android/tools/r8/internal/Lg0;

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/android/tools/r8/internal/Lg0;->e:Lcom/android/tools/r8/internal/Lg0;

    :goto_0
    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ej0;->a()Lcom/android/tools/r8/internal/hh0;

    move-result-object p1

    filled-new-array {p1}, [Lcom/android/tools/r8/internal/hh0;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/pl0;->a([Ljava/lang/Object;)Lcom/android/tools/r8/internal/nl0;

    move-result-object p1

    return-object p1

    :cond_1
    iget p1, v3, Lcom/android/tools/r8/internal/Lg0;->b:I

    if-ne p1, v0, :cond_3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Lg0;->a()Lcom/android/tools/r8/internal/xi0;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/xi0;->b:Lcom/android/tools/r8/internal/Zh0;

    if-nez p1, :cond_2

    sget-object p1, Lcom/android/tools/r8/internal/Zh0;->j:Lcom/android/tools/r8/internal/Zh0;

    :cond_2
    const-string v1, "compoundValue.style.parent"

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/android/tools/r8/internal/hh0;->e:Lcom/android/tools/r8/internal/hh0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/hh0;->d()Lcom/android/tools/r8/internal/gh0;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/gh0;->a(Lcom/android/tools/r8/internal/Zh0;)Lcom/android/tools/r8/internal/gh0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/gh0;->b()Lcom/android/tools/r8/internal/hh0;

    move-result-object p1

    filled-new-array {p1}, [Lcom/android/tools/r8/internal/hh0;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/pl0;->a([Ljava/lang/Object;)Lcom/android/tools/r8/internal/nl0;

    move-result-object p1

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Lg0;->a()Lcom/android/tools/r8/internal/xi0;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/internal/xi0;->d:Ljava/util/List;

    const-string v2, "compoundValue.style.entryList"

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/android/tools/r8/internal/hf;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/hf;-><init>(Ljava/lang/Iterable;)V

    sget-object v1, Lcom/android/tools/r8/internal/he0;->b:Lcom/android/tools/r8/internal/he0;

    new-instance v3, Lcom/android/tools/r8/internal/Ax;

    sget-object v4, Lcom/android/tools/r8/internal/ul0;->h:Lcom/android/tools/r8/internal/ul0;

    invoke-direct {v3, v2, v1, v4}, Lcom/android/tools/r8/internal/Ax;-><init>(Lcom/android/tools/r8/internal/nl0;Lcom/android/tools/r8/internal/ny;Lcom/android/tools/r8/internal/ny;)V

    new-array v0, v0, [Lcom/android/tools/r8/internal/nl0;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object v3, v0, p1

    invoke-static {v0}, Lcom/android/tools/r8/internal/pl0;->a([Ljava/lang/Object;)Lcom/android/tools/r8/internal/nl0;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/pl0;->b(Lcom/android/tools/r8/internal/nl0;)Lcom/android/tools/r8/internal/Ax;

    move-result-object p1

    return-object p1

    :cond_3
    if-ne p1, v4, :cond_5

    if-ne p1, v4, :cond_4

    iget-object p1, v3, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast p1, Lcom/android/tools/r8/internal/zg0;

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/android/tools/r8/internal/zg0;->d:Lcom/android/tools/r8/internal/zg0;

    :goto_1
    iget-object p1, p1, Lcom/android/tools/r8/internal/zg0;->b:Ljava/util/List;

    const-string v0, "compoundValue.array.elementList"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/tools/r8/internal/hf;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/hf;-><init>(Ljava/lang/Iterable;)V

    sget-object p1, Lcom/android/tools/r8/internal/ie0;->b:Lcom/android/tools/r8/internal/ie0;

    new-instance v1, Lcom/android/tools/r8/internal/Rs0;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/internal/Rs0;-><init>(Lcom/android/tools/r8/internal/nl0;Lcom/android/tools/r8/internal/ny;)V

    return-object v1

    :cond_5
    if-ne p1, v2, :cond_7

    if-ne p1, v2, :cond_6

    iget-object p1, v3, Lcom/android/tools/r8/internal/Lg0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast p1, Lcom/android/tools/r8/internal/Jh0;

    goto :goto_2

    :cond_6
    sget-object p1, Lcom/android/tools/r8/internal/Jh0;->d:Lcom/android/tools/r8/internal/Jh0;

    :goto_2
    iget-object p1, p1, Lcom/android/tools/r8/internal/Jh0;->b:Ljava/util/List;

    const-string v0, "compoundValue.plural.entryList"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/tools/r8/internal/hf;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/hf;-><init>(Ljava/lang/Iterable;)V

    sget-object p1, Lcom/android/tools/r8/internal/je0;->b:Lcom/android/tools/r8/internal/je0;

    new-instance v1, Lcom/android/tools/r8/internal/Rs0;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/internal/Rs0;-><init>(Lcom/android/tools/r8/internal/nl0;Lcom/android/tools/r8/internal/ny;)V

    return-object v1

    :cond_7
    sget-object p1, Lcom/android/tools/r8/internal/Xt;->a:Lcom/android/tools/r8/internal/Xt;

    return-object p1
.end method
