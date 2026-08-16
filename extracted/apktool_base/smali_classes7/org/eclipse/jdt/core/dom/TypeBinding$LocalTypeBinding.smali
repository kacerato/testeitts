.class Lorg/eclipse/jdt/core/dom/TypeBinding$LocalTypeBinding;
.super Lorg/eclipse/jdt/core/dom/TypeBinding;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/core/dom/TypeBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalTypeBinding"
.end annotation


# instance fields
.field private declaringMember:Lorg/eclipse/jdt/core/dom/IBinding;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/dom/BindingResolver;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/core/dom/IBinding;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/TypeBinding;-><init>(Lorg/eclipse/jdt/core/dom/BindingResolver;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iput-object p3, p0, Lorg/eclipse/jdt/core/dom/TypeBinding$LocalTypeBinding;->declaringMember:Lorg/eclipse/jdt/core/dom/IBinding;

    return-void
.end method


# virtual methods
.method public getDeclaringMember()Lorg/eclipse/jdt/core/dom/IBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding$LocalTypeBinding;->declaringMember:Lorg/eclipse/jdt/core/dom/IBinding;

    return-object v0
.end method
