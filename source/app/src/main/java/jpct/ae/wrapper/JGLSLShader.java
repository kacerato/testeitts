package jpct.ae.wrapper;

import anywheresoftware.b4a.AbsObjectWrapper;
import anywheresoftware.b4a.BA;
import com.threed.jpct.GLSLShader;
import com.threed.jpct.Matrix;
import com.threed.jpct.ShaderLocator;
import com.threed.jpct.SimpleVector;

@BA.ShortName("JpctGLSLShader")
public class JGLSLShader extends AbsObjectWrapper<GLSLShader> {
    public static void addReplacement(String str, String str2) {
        GLSLShader.addReplacement(str, str2);
    }

    public static void setShaderLocator(ShaderLocator shaderLocator) {
        GLSLShader.setShaderLocator(shaderLocator);
    }

    public void Initialize(String str, String str2) {
        setObject(new GLSLShader(str, str2));
    }

    public void dispose() {
        ((GLSLShader) getObject()).dispose();
    }

    public void finalize() {
        ((GLSLShader) getObject()).finalize();
    }

    public int getHandle(String str) {
        return ((GLSLShader) getObject()).getHandle(str);
    }

    public int getProgram() {
        return ((GLSLShader) getObject()).getProgram();
    }

    public void setFloatArrayUniform(String str, float[] fArr) {
        ((GLSLShader) getObject()).setFloatArrayUniform(str, fArr);
    }

    public void setStaticFloatArrayUniform(String str, float[] fArr) {
        ((GLSLShader) getObject()).setStaticFloatArrayUniform(str, fArr);
    }

    public void setStaticUniform(String str, int i10) {
        ((GLSLShader) getObject()).setStaticUniform(str, i10);
    }

    public void setStaticUniform2(String str, float f10) {
        ((GLSLShader) getObject()).setStaticUniform(str, f10);
    }

    public void setStaticUniform3(String str, float[] fArr) {
        ((GLSLShader) getObject()).setStaticUniform(str, fArr);
    }

    public void setStaticUniform4(String str, SimpleVector[] simpleVectorArr) {
        ((GLSLShader) getObject()).setStaticUniform(str, simpleVectorArr);
    }

    public void setStaticUniform5(String str, SimpleVector simpleVector) {
        ((GLSLShader) getObject()).setStaticUniform(str, simpleVector);
    }

    public void setStaticUniform6(String str, Matrix matrix) {
        ((GLSLShader) getObject()).setStaticUniform(str, matrix);
    }

    public void setUniform(String str, int i10) {
        ((GLSLShader) getObject()).setUniform(str, i10);
    }

    public void setUniform2(String str, float f10) {
        ((GLSLShader) getObject()).setUniform(str, f10);
    }

    public void setUniform3(String str, SimpleVector simpleVector) {
        ((GLSLShader) getObject()).setUniform(str, simpleVector);
    }

    public void setUniform4(String str, SimpleVector[] simpleVectorArr) {
        ((GLSLShader) getObject()).setUniform(str, simpleVectorArr);
    }

    public void setUniform5(String str, float[] fArr) {
        ((GLSLShader) getObject()).setUniform(str, fArr);
    }

    public void setUniform6(String str, Matrix matrix) {
        ((GLSLShader) getObject()).setUniform(str, matrix);
    }
}
