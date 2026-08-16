.class public Lcom/google/common/util/concurrent/b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/Q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/b$a;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw2/Q<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/util/concurrent/b$a;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/b$a$a;->b:Lcom/google/common/util/concurrent/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/b$a$a;->b:Lcom/google/common/util/concurrent/b$a;

    iget-object v0, v0, Lcom/google/common/util/concurrent/b$a;->p:Lcom/google/common/util/concurrent/b;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/b;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/b$a$a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
