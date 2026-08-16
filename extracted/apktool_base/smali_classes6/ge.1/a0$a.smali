.class public Lge/a0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhe/e0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lge/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhe/e0<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lge/a0;


# direct methods
.method public constructor <init>(Lge/a0;)V
    .locals 0

    iput-object p1, p0, Lge/a0$a;->a:Lge/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;C)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;C)Z"
        }
    .end annotation

    iget-object v0, p0, Lge/a0$a;->a:Lge/a0;

    invoke-virtual {v0, p1, p2}, Lge/a0;->qa(Ljava/lang/Object;C)C

    const/4 p1, 0x1

    return p1
.end method
