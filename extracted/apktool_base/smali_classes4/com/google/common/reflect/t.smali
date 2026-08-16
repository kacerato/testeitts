.class public final synthetic Lcom/google/common/reflect/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/t;


# instance fields
.field public final synthetic b:Lcom/google/common/reflect/s$d;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/reflect/s$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/reflect/t;->b:Lcom/google/common/reflect/s$d;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/reflect/t;->b:Lcom/google/common/reflect/s$d;

    check-cast p1, Ljava/lang/reflect/Type;

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/s$d;->d(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
