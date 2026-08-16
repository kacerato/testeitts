.class Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder$ListItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListItem"
.end annotation


# instance fields
.field public next:Lorg/eclipse/jdt/core/IJavaElement;

.field public previous:Lorg/eclipse/jdt/core/IJavaElement;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder$ListItem;->previous:Lorg/eclipse/jdt/core/IJavaElement;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder$ListItem;->next:Lorg/eclipse/jdt/core/IJavaElement;

    return-void
.end method
