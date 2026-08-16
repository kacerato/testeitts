.class public final synthetic Lb9/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb9/a;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lb9/a;->b:Ljava/util/List;

    check-cast p1, Lb9/b$f;

    invoke-static {v0, p1}, Lb9/b;->a(Ljava/util/List;Lb9/b$f;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
