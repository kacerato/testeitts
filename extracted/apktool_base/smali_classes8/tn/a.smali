.class public Ltn/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltn/x;


# instance fields
.field public final a:J

.field public final b:Lun/d;

.field public final c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ltn/u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLun/d;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "colliderId",
            "collider",
            "affectedTiles"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lun/d;",
            "Ljava/util/Collection<",
            "Ltn/u;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ltn/a;->a:J

    iput-object p3, p0, Ltn/a;->b:Lun/d;

    iput-object p4, p0, Ltn/a;->c:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public a(Ltn/u;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tile"
        }
    .end annotation

    iget-wide v0, p0, Ltn/a;->a:J

    iget-object v2, p0, Ltn/a;->b:Lun/d;

    invoke-virtual {p1, v0, v1, v2}, Ltn/u;->b(JLun/d;)V

    return-void
.end method

.method public b()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ltn/u;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltn/a;->c:Ljava/util/Collection;

    return-object v0
.end method
