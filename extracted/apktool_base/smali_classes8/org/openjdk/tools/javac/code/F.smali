.class public final synthetic Lorg/openjdk/tools/javac/code/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/code/Type$UndetVar$UndetVarListener;


# instance fields
.field public final synthetic a:Lorg/openjdk/tools/javac/code/Type$UndetVar;

.field public final synthetic b:Lorg/openjdk/tools/javac/util/ListBuffer;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/util/ListBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/F;->a:Lorg/openjdk/tools/javac/code/Type$UndetVar;

    iput-object p2, p0, Lorg/openjdk/tools/javac/code/F;->b:Lorg/openjdk/tools/javac/util/ListBuffer;

    return-void
.end method


# virtual methods
.method public final varBoundChanged(Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;Lorg/openjdk/tools/javac/code/Type;Z)V
    .locals 6

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/F;->a:Lorg/openjdk/tools/javac/code/Type$UndetVar;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/F;->b:Lorg/openjdk/tools/javac/util/ListBuffer;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->a(Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/util/ListBuffer;Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;Lorg/openjdk/tools/javac/code/Type;Z)V

    return-void
.end method
