.class public LPl/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LPl/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LPl/l;-><init>(LBi/y;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lorg/bouncycastle/util/n;

.field public final synthetic b:LPl/l;


# direct methods
.method public constructor <init>(LPl/l;Lorg/bouncycastle/util/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LPl/l$a;->b:LPl/l;

    iput-object p2, p0, LPl/l$a;->a:Lorg/bouncycastle/util/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()LBi/y;
    .locals 1

    iget-object v0, p0, LPl/l$a;->a:Lorg/bouncycastle/util/n;

    invoke-interface {v0}, Lorg/bouncycastle/util/n;->copy()Lorg/bouncycastle/util/n;

    move-result-object v0

    check-cast v0, LBi/y;

    return-object v0
.end method
