.class Lorg/eclipse/jdt/core/search/SearchEngine$SearchPatternAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/search/ISearchPattern;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/core/search/SearchEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchPatternAdapter"
.end annotation


# instance fields
.field pattern:Lorg/eclipse/jdt/core/search/SearchPattern;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/search/SearchPattern;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/core/search/SearchEngine$SearchPatternAdapter;->pattern:Lorg/eclipse/jdt/core/search/SearchPattern;

    return-void
.end method
