.class public Lorg/eclipse/jdt/internal/codeassist/complete/InvalidCursorLocation;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# static fields
.field public static final NO_COMPLETION_INSIDE_COMMENT:Ljava/lang/String; = "No Completion Inside Comment"

.field public static final NO_COMPLETION_INSIDE_NUMBER:Ljava/lang/String; = "No Completion Inside Number"

.field public static final NO_COMPLETION_INSIDE_STRING:Ljava/lang/String; = "No Completion Inside String"

.field public static final NO_COMPLETION_INSIDE_UNICODE:Ljava/lang/String; = "No Completion Inside Unicode"

.field private static final serialVersionUID:J = -0x2fc8906ffa0ead06L


# instance fields
.field public irritant:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/InvalidCursorLocation;->irritant:Ljava/lang/String;

    return-void
.end method
