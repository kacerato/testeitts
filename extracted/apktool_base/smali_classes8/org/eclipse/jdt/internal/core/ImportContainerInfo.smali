.class public Lorg/eclipse/jdt/internal/core/ImportContainerInfo;
.super Lorg/eclipse/jdt/internal/core/JavaElementInfo;
.source "SourceFile"


# instance fields
.field protected children:[Lorg/eclipse/jdt/core/IJavaElement;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaElementInfo;-><init>()V

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaElement;->NO_ELEMENTS:[Lorg/eclipse/jdt/internal/core/JavaElement;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/ImportContainerInfo;->children:[Lorg/eclipse/jdt/core/IJavaElement;

    return-void
.end method


# virtual methods
.method public getChildren()[Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ImportContainerInfo;->children:[Lorg/eclipse/jdt/core/IJavaElement;

    return-object v0
.end method
