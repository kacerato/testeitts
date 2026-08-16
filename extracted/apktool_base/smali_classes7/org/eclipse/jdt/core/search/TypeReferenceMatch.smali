.class public Lorg/eclipse/jdt/core/search/TypeReferenceMatch;
.super Lorg/eclipse/jdt/core/search/ReferenceMatch;
.source "SourceFile"


# instance fields
.field private otherElements:[Lorg/eclipse/jdt/core/IJavaElement;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/IJavaElement;IIIZLorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/core/resources/IResource;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/eclipse/jdt/core/search/ReferenceMatch;-><init>(Lorg/eclipse/jdt/core/IJavaElement;IIIZLorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/core/resources/IResource;)V

    return-void
.end method


# virtual methods
.method public final getOtherElements()[Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/search/TypeReferenceMatch;->otherElements:[Lorg/eclipse/jdt/core/IJavaElement;

    return-object v0
.end method

.method public final setOtherElements([Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/core/search/TypeReferenceMatch;->otherElements:[Lorg/eclipse/jdt/core/IJavaElement;

    return-void
.end method
