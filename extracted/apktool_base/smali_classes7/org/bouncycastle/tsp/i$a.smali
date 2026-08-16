.class public Lorg/bouncycastle/tsp/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cms/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/tsp/i;-><init>(Lorg/bouncycastle/cms/L0;LQk/p;Loh/x;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic g:Lorg/bouncycastle/cms/L0;

.field public final synthetic h:LDh/c;

.field public final synthetic i:Lorg/bouncycastle/tsp/i;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/tsp/i;Lorg/bouncycastle/cms/L0;LDh/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/tsp/i$a;->i:Lorg/bouncycastle/tsp/i;

    iput-object p2, p0, Lorg/bouncycastle/tsp/i$a;->g:Lorg/bouncycastle/cms/L0;

    iput-object p3, p0, Lorg/bouncycastle/tsp/i$a;->h:LDh/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)Luh/b;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSAttributeTableGenerationException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tsp/i$a;->g:Lorg/bouncycastle/cms/L0;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/L0;->j()Lorg/bouncycastle/cms/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/bouncycastle/cms/d;->a(Ljava/util/Map;)Luh/b;

    move-result-object p1

    sget-object v0, LXh/t;->l3:Loh/x;

    invoke-virtual {p1, v0}, Luh/b;->d(Loh/x;)Luh/a;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, LDh/g;

    iget-object v2, p0, Lorg/bouncycastle/tsp/i$a;->h:LDh/c;

    invoke-direct {v1, v2}, LDh/g;-><init>(LDh/c;)V

    invoke-virtual {p1, v0, v1}, Luh/b;->a(Loh/x;Loh/g;)Luh/b;

    move-result-object p1

    :cond_0
    return-object p1
.end method
