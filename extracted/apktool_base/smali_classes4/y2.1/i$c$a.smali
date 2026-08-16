.class public Ly2/i$c$a;
.super Ly2/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly2/i$c;->c()Ly2/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final g:[C
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public final synthetic h:Ly2/i$c;


# direct methods
.method public constructor <init>(Ly2/i$c;Ljava/util/Map;CC)V
    .locals 0

    iput-object p1, p0, Ly2/i$c$a;->h:Ly2/i$c;

    invoke-direct {p0, p2, p3, p4}, Ly2/a;-><init>(Ljava/util/Map;CC)V

    invoke-static {p1}, Ly2/i$c;->a(Ly2/i$c;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Ly2/i$c;->a(Ly2/i$c;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Ly2/i$c$a;->g:[C

    return-void
.end method


# virtual methods
.method public f(C)[C
    .locals 0
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object p1, p0, Ly2/i$c$a;->g:[C

    return-object p1
.end method
