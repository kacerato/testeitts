.class public final synthetic Lorg/eclipse/jdt/internal/core/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/c;->b:Ljava/lang/String;

    check-cast p1, Lorg/eclipse/jdt/core/IClasspathAttribute;

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->a(Ljava/lang/String;Lorg/eclipse/jdt/core/IClasspathAttribute;)Z

    move-result p1

    return p1
.end method
