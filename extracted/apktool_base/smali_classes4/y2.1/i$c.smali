.class public final Ly2/i$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly2/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:C

.field public c:C

.field public d:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ly2/i$c;->a:Ljava/util/Map;

    const/4 v0, 0x0

    .line 4
    iput-char v0, p0, Ly2/i$c;->b:C

    const v0, 0xffff

    .line 5
    iput-char v0, p0, Ly2/i$c;->c:C

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Ly2/i$c;->d:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ly2/i$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ly2/i$c;-><init>()V

    return-void
.end method

.method public static synthetic a(Ly2/i$c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ly2/i$c;->d:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public b(CLjava/lang/String;)Ly2/i$c;
    .locals 1
    .annotation build LI2/a;
    .end annotation

    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ly2/i$c;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public c()Ly2/h;
    .locals 4

    new-instance v0, Ly2/i$c$a;

    iget-object v1, p0, Ly2/i$c;->a:Ljava/util/Map;

    iget-char v2, p0, Ly2/i$c;->b:C

    iget-char v3, p0, Ly2/i$c;->c:C

    invoke-direct {v0, p0, v1, v2, v3}, Ly2/i$c$a;-><init>(Ly2/i$c;Ljava/util/Map;CC)V

    return-object v0
.end method

.method public d(CC)Ly2/i$c;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    iput-char p1, p0, Ly2/i$c;->b:C

    iput-char p2, p0, Ly2/i$c;->c:C

    return-object p0
.end method

.method public e(Ljava/lang/String;)Ly2/i$c;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    iput-object p1, p0, Ly2/i$c;->d:Ljava/lang/String;

    return-object p0
.end method
