.class public Lge/x$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhe/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lge/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhe/y<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lge/x;


# direct methods
.method public constructor <init>(Lge/x;)V
    .locals 0

    iput-object p1, p0, Lge/x$a;->a:Lge/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(DLjava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DTV;)Z"
        }
    .end annotation

    iget-object v0, p0, Lge/x$a;->a:Lge/x;

    invoke-virtual {v0, p1, p2, p3}, Lge/x;->W2(DLjava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method
