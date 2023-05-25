joke = "C:/Users/davis_lepisto/Downloads/tricktreat.wav"
one = "C:/Users/davis_lepisto/Downloads/Goatah.wav"
two = "C:/Users/davis_lepisto/Downloads/ohno (1).wav"
three = "C:/Users/davis_lepisto/Downloads/smashing (1).wav"

#DIDN'T FINISH DD: :( :( :( :( :( :(

use_bpm 82
use_synth :piano
note = [:d5,:b4,:a4,:d5,:d5,:b4,:b4]

live_loop :caaspp do
  n = 0
  7.times do
    play (note[n])
    sleep 1/4.0
    n = n + 1
  end
  sample joke, amp: 2
  stop
end

sleep 2

live_loop :intro do
  7.times do
    sample :bd_zum
    sleep 1.25
  end
  stop
end

sleep 10

use_bpm 143

define :threes do |a, b, c|
  play a, sustain: 0.5, amp: 3
  play b, sustain: 0.5, amp: 3
  play c, sustain: 0.5, amp: 3
end

live_loop :synth2 do
  2.times do
    2.times do
      use_synth :kalimba
      threes :e3, :g3, :b3
      sleep 1.5
      threes :e3, :g3, :b3
      sleep 0.5
      threes :e3, :g3, :b3
      sleep 2.0
    end
    2.times do
      use_synth :kalimba
      threes :d3, :e3, :b3
      sleep 1.5
      threes :d3, :e3, :b3
      sleep 0.5
      threes :d3, :e3, :b3
      sleep 2.0
    end
  end
  stop
end

live_loop :drum do
  11.times do
    sample :bd_zum
    sample :drum_cymbal_closed, amp: 0.5
    sleep 1/2.0
    sample :drum_cymbal_closed, amp: 0.5
    sleep 1/2.0
    sample :drum_snare_soft
    sample :drum_cymbal_closed, amp: 0.5
    sleep 1/2.0
    sample :bd_zum
    sample :drum_cymbal_closed, amp: 0.5
    sleep 1/2.0
    sample :bd_zum
    sample :drum_cymbal_closed, amp: 0.5
    sleep 1/2.0
    sample :drum_cymbal_closed, amp: 0.5
    sleep 1/2.0
    sample :drum_snare_soft
    sample :drum_cymbal_closed, amp: 0.5
    sleep 1/2.0
    sample :drum_cymbal_closed, amp: 0.5
    sleep 1/2.0
  end
  sample :drum_roll, sustain: 2
  sample joke, amp: 2
  stop
end

live_loop :tippy do
  5.times do
    sleep 6
    8.times do
      sleep 1/4.0
      sample :elec_tick, amp: 5
    end
  end
  stop
end

sleep 48

live_loop :drummer do
  8.times do
    sample :bd_zum
    sample :drum_cymbal_closed, amp: 0.5
    sleep 1/2.0
    sample :drum_cymbal_closed, amp: 0.5
    sleep 1/2.0
    sample :drum_snare_soft
    sample :drum_cymbal_closed, amp: 0.5
    sleep 1/2.0
    sample :bd_zum
    sample :drum_cymbal_closed, amp: 0.5
    sleep 1/2.0
    sample :bd_zum
    sample :drum_cymbal_closed, amp: 0.5
    sleep 1/2.0
    sample :drum_cymbal_closed, amp: 0.5
    sleep 1/2.0
    sample :drum_snare_soft
    sample :drum_cymbal_closed, amp: 0.5
    sleep 1/2.0
    sample :drum_cymbal_closed, amp: 0.5
    sleep 1/2.0
  end
  sample :drum_roll, sustain: 2
  sample joke, amp: 2
  stop
end

live_loop :tippytap do
  5.times do
    sleep 6
    8.times do
      sleep 1/4.0
      sample :elec_tick, amp: 5
    end
  end
  stop
end

live_loop :synth21 do
  2.times do
    2.times do
      use_synth :kalimba
      threes :e3, :g3, :b3
      sleep 1.5
      threes :e3, :g3, :b3
      sleep 0.5
      threes :e3, :g3, :b3
      sleep 2.0
    end
    2.times do
      use_synth :kalimba
      threes :d3, :e3, :b3
      sleep 1.5
      threes :d3, :e3, :b3
      sleep 0.5
      threes :d3, :e3, :b3
      sleep 2.0
    end
  end
  stop
end

use_synth :prophet

play :f5
play :f6
sleep 1/2.0
play :f5
play :f6
sleep 1/2.0
play :a5
play :a6
sleep 1/2.0
play :b5
play :b6
sleep 1/2.0
#4
play :c6
play :c7
sleep 1/2.0
play :b5
play :b6
sleep 1/2.0
play :a5
play :a6
sleep 1/2.0
play :f5
play :f6
sleep 1
#4
play :f5
play :f6
sleep 1/2.0
play :a5
play :a6
sleep 1/2.0
play :b5
play :b6
sleep 1/2.0
#3
play :c6
play :c7
sleep 1/2.0
play :b5
play :b6
sleep 1/2.0
play :a5
play :a6
sleep 1
#3 end 1

play :d4
play :d5
sleep 1/2.0
play :d4
play :d5
sleep 1/2.0
play :f4
play :f5
sleep 1/2.0
play :g5
play :g6
sleep 1/2.0
#4
play :a5
play :a6
sleep 1/2.0
play :g5
play :g6
sleep 1/2.0
play :f4
play :f5
sleep 1/2.0
play :d4
play :d5
sleep 1
#4
play :d4
play :d5
sleep 1/2.0
play :a5
play :a6
sleep 1/2.0
#3
play :d4
play :d5
sleep 1/2.0
play :g5
play :g6
sleep 1/2.0
play :d4
play :d5
sleep 1/2.0
play :f4
play :f5
sleep 1
#end 2

#RAN OUT OF TIME, SHIT

sample two, amp: 3
sleep 3
sample three, amp: 8
sleep 5
sample one, amp: 3
sleep 1
sample one, amp: 6
sleep 2
sample one, amp: 4
sleep 1
sample one, amp: 7
sleep 1
sample one, amp: 4
