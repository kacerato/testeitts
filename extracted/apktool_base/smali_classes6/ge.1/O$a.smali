.class public Lge/O$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhe/Q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lge/O;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhe/Q<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lge/O;


# direct methods
.method public constructor <init>(Lge/O;)V
    .locals 0

    iput-object p1, p0, Lge/O$a;->a:Lge/O;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)Z"
        }
    .end annotation

    iget-object v0, p0, Lge/O$a;->a:Lge/O;

    invoke-virtual {v0, p1, p2}, Lge/O;->Gd(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method
