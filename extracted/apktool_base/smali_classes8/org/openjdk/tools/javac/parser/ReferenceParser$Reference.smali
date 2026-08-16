.class public Lorg/openjdk/tools/javac/parser/ReferenceParser$Reference;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/parser/ReferenceParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Reference"
.end annotation


# instance fields
.field public final member:Lorg/openjdk/tools/javac/util/Name;

.field public final paramTypes:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;"
        }
    .end annotation
.end field

.field public final qualExpr:Lorg/openjdk/tools/javac/tree/JCTree;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/parser/ReferenceParser$Reference;->qualExpr:Lorg/openjdk/tools/javac/tree/JCTree;

    iput-object p2, p0, Lorg/openjdk/tools/javac/parser/ReferenceParser$Reference;->member:Lorg/openjdk/tools/javac/util/Name;

    iput-object p3, p0, Lorg/openjdk/tools/javac/parser/ReferenceParser$Reference;->paramTypes:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method
