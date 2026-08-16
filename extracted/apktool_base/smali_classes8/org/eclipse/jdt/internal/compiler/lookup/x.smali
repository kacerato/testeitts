.class public final synthetic Lorg/eclipse/jdt/internal/compiler/lookup/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;->j(I)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1
.end method
