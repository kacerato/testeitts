.class public Lwi/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwi/b;->g(Lvi/d;Lli/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lwi/b;


# direct methods
.method public constructor <init>(Lwi/b;)V
    .locals 0

    iput-object p1, p0, Lwi/b$a;->b:Lwi/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Z2(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lli/g;

    invoke-virtual {p1}, Lli/g;->e()Lfi/d;

    move-result-object p1

    iget-object v0, p0, Lwi/b$a;->b:Lwi/b;

    invoke-static {v0}, Lwi/b;->a(Lwi/b;)Lfi/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfi/d;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public clone()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method
