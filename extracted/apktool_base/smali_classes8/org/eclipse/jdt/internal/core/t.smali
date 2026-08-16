.class public final synthetic Lorg/eclipse/jdt/internal/core/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/t;->b:Z

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/t;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/t;->b:Z

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/t;->c:Ljava/lang/String;

    check-cast p1, [Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Lorg/eclipse/jdt/internal/core/NameLookup;->d(ZLjava/lang/String;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
