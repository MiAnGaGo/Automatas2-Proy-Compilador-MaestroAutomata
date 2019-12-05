package Interfaz;



import javax.swing.*;
import java.awt.*;
import javax.swing.text.*;
import sun.font.TextLineComponent;


public class PanelColores extends JPanel{
    public static JTextPane txt;
    public String red="(\\W)*(mientras|repetir|hasta|para|si|sino|seleccionar|hacer|detener|continuar|caso|defecto)";
    public String blue="(\\W)*(Entero|Caracter|Alfabeto|Estados|Automata|Booleano|Conjunto|Estado|Expresion|Fin|Flotante|Grafico|Inicio|Mostrar|Nuevo|Funcion|Validar|Con|esAfd|esAfn"
            + "|estadoInicial|estadosFinales|transicion|Hacia|ExpReg|err|mostrarTabla|Orden|ordenPrincipal)";
    public String pink="(\\W)*(\\(|\\)|\\{|\\}|\\,|\\;|\\:|\\=|\\++|\\--|\\+"
            + "|\\-|\\*|\\/|\\^|\\<|\\>|\\<=|\\>=|\\==|\\!=|\\|||\\&&|\\^|!!\\!&|\\!)";
        public String green="(\\W)*([0-9]+)";

    
    private int findLastNonWordChar (String text, int index) {
        while (--index >= 0) {
            if (String.valueOf(text.charAt(index)).matches("\\W")) {
                break;
            }
        }
        return index;
    }
    private int findFirstNonWordChar (String text, int index) {
        while (index < text.length()) {
            if (String.valueOf(text.charAt(index)).matches("\\W")) {
                break;
            }
            index++;
        }
        return index;
    }

    public PanelColores () {
        final StyleContext cont = StyleContext.getDefaultStyleContext();
        final AttributeSet attrBlue = cont.addAttribute(cont.getEmptySet(), StyleConstants.Foreground, Color.BLUE);
        final AttributeSet attrRed = cont.addAttribute(cont.getEmptySet(), StyleConstants.Foreground, new Color(230,122,56));
        final AttributeSet attrGreen = cont.addAttribute(cont.getEmptySet(), StyleConstants.Foreground, Color.GREEN);
        final AttributeSet attrPink = cont.addAttribute(cont.getEmptySet(), StyleConstants.Foreground, new Color(172,53,168));
        final AttributeSet attrBlack = cont.addAttribute(cont.getEmptySet(), StyleConstants.Foreground, Color.BLACK);
        DefaultStyledDocument doc = new DefaultStyledDocument() {
            public void insertString (int offset, String str, AttributeSet a) throws BadLocationException {
                super.insertString(offset, str, a);

                String text = getText(0, getLength());
                int before = findLastNonWordChar(text, offset);
                if (before < 0) before = 0;
                int after = findFirstNonWordChar(text, offset + str.length());
                int wordL = before;
                int wordR = before;

                while (wordR <= after) {
                    if (wordR == after || String.valueOf(text.charAt(wordR)).matches("\\W")) {
                        if(text.substring(wordL, wordR).matches(red)){
                            setCharacterAttributes(wordL, wordR - wordL, attrRed, false);
                        }
                        if(text.substring(wordL, wordR).matches(green)){
                            setCharacterAttributes(wordL, wordR - wordL, attrGreen, false);
                        } 

                        if(text.substring(wordL, wordR).matches(blue)){
                            setCharacterAttributes(wordL, wordR - wordL, attrBlue, false);
                        }
                        if(text.substring(wordL, wordR).matches(pink)){
                            setCharacterAttributes(wordL, wordR - wordL, attrPink, false);
                        }
                        if(!(text.substring(wordL,wordR).matches(red)||text.substring(wordL,wordR).matches(blue)||text.substring(wordL,wordR).matches(green)||text.substring(wordL,wordR).matches(pink)))
                            setCharacterAttributes(wordL, wordR - wordL, attrBlack, false);
                        
                        wordL = wordR;
                    }
                    wordR++;
                }
            }

            public void remove (int offs, int len) throws BadLocationException {
                super.remove(offs, len);

                String text = getText(0, getLength());
                int before = findLastNonWordChar(text, offs);
                if (before < 0) before = 0;
                int after = findFirstNonWordChar(text, offs);
                if(text.substring(before, after).matches(red)){
                    setCharacterAttributes(before, after - before, attrRed, false);
                } 
                if(text.substring(before, after).matches(blue)){
                    setCharacterAttributes(before, after - before, attrBlue, false);
                }
                if(text.substring(before, after).matches(pink)){
                    setCharacterAttributes(before, after - before, attrGreen, false);
                }
                if(text.substring(before, after).matches(green)){
                    setCharacterAttributes(before, after - before, attrGreen, false);
                }
                if(!(text.substring(before,after).matches(red)||text.substring(before,after).matches(blue)||text.substring(before,after).matches(green)||text.substring(before,after).matches(pink)))
                    setCharacterAttributes(before, after - before, attrBlack, false);
                
            }
        };
        
        txt = new JTextPane(doc);
        
        JScrollPane jsp=new JScrollPane(txt);
        TextLineNumber tln = new TextLineNumber(txt);
        jsp.setRowHeaderView(tln);
        jsp.setPreferredSize( new Dimension(607, 385) );
        this.add(jsp);
        this.setSize(607, 385);
    }
}
