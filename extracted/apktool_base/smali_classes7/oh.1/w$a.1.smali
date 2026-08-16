.class public Loh/w$a;
.super Loh/T;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loh/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Loh/T;-><init>(Ljava/lang/Class;I)V

    return-void
.end method


# virtual methods
.method public d(Loh/E;)Loh/B;
    .locals 2

    new-instance v0, Loh/w;

    sget-object v1, Loh/p;->c:Loh/T;

    invoke-virtual {v1, p1}, Loh/T;->d(Loh/E;)Loh/B;

    move-result-object p1

    check-cast p1, Loh/p;

    invoke-direct {v0, p1}, Loh/w;-><init>(Loh/p;)V

    return-object v0
.end method

.method public e(Loh/C0;)Loh/B;
    .locals 2

    new-instance v0, Loh/w;

    sget-object v1, Loh/p;->c:Loh/T;

    invoke-virtual {v1, p1}, Loh/T;->e(Loh/C0;)Loh/B;

    move-result-object p1

    check-cast p1, Loh/p;

    invoke-direct {v0, p1}, Loh/w;-><init>(Loh/p;)V

    return-object v0
.end method
