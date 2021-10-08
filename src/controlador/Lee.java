/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

/**
 *
 * @author Oskar
 */
import javax.speech.*;
import javax.speech.synthesis.*;
import java.util.*;
 
public class Lee {
 
 /**
 * @param args the command line arguments
 */
 public static void main(String[] args) {
 try {
 
 String say=args[0];
 
 SynthesizerModeDesc required = new SynthesizerModeDesc();
 required.setLocale(Locale.ROOT);
 
 Voice voice=new Voice(null, Voice.GENDER_FEMALE, Voice.GENDER_FEMALE, null);
 
 required.addVoice(voice);
 
 Synthesizer synth = Central.createSynthesizer(null);
 
 synth.allocate();
 synth.resume();
 
 synth.speakPlainText(say,null);
 
 synth.waitEngineState(Synthesizer.QUEUE_EMPTY);
 synth.deallocate();
 
 } catch (Exception e) {
 e.printStackTrace();
 }
 }
}
