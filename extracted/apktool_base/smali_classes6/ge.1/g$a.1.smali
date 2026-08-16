.class public Lge/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhe/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lge/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhe/g<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lge/g;


# direct methods
.method public constructor <init>(Lge/g;)V
    .locals 0

    iput-object p1, p0, Lge/g$a;->a:Lge/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(BLjava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BTV;)Z"
        }
    .end annotation

    iget-object v0, p0, Lge/g$a;->a:Lge/g;

    invoke-virtual {v0, p1, p2}, Lge/g;->k4(BLjava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method
