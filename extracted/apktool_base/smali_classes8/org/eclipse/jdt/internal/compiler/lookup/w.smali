.class public final synthetic Lorg/eclipse/jdt/internal/compiler/lookup/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->b(I)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    return-object p1
.end method
